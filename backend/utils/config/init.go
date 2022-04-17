package config

import (
	"io/ioutil"

	"github.com/sirupsen/logrus"
	"gopkg.in/yaml.v2"

	"noty-backend/utils/logger"
)

var C = new(config)

func init() {
	// * Load configurations to struct
	yml, err := ioutil.ReadFile("config.yml")
	if err != nil {
		logger.Log(logrus.Fatal, "UNABLE TO READ YML CONFIGURATION FILE")
	}
	err = yaml.Unmarshal(yml, C)
	if err != nil {
		logger.Log(logrus.Fatal, "UNABLE TO PARSE YML CONFIGURATION FILE")
	}

	// * Apply log level configuration
	logrus.SetLevel(logrus.Level(C.LogLevel))
}
