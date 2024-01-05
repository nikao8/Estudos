package internal_errors

import (
	"fmt"
)

var ErrInternal error = fmt.Errorf(fmt.Sprintf("Internal server error%s", ""))
