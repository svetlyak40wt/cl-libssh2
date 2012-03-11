(in-package :asdf)

(cl:eval-when (:load-toplevel :execute)
	(asdf:operate 'asdf:load-op 'cffi-grovel))

(defsystem libssh2
	:description "Trivial libssh2 bindings"
	:version      "0.1"
	:author       "Oleksii Shevchuk <alxchk@gmail.com>"
	:license      "Public Domain"
	:depends-on   (#:cffi #:usocket
								 #:trivial-gray-streams #:babel
								 #:split-sequence)
	:serial       t
	:components   ((:file "package")
								 (cffi-grovel:grovel-file "libssh2-libc.cffi")
								 (:file "libssh2-cffi")))