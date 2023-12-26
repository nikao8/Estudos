package internal_errors

import "errors"

var ErrInternal error = errors.New("Internal server error")
