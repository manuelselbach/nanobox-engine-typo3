typo3_create_typo3_conf() {
  nos_template \
    "typo3/AdditionalConfiguration.php.mustache" \
    "$(nos_code_dir)/AdditionalConfiguration.php" \
    "$(typo3_conf_payload)"
  cat ${engine_template_dir}/typo3/AdditionalConfiguration-bottom.php >> $(nos_code_dir)/AdditionalConfiguration.php
}

typo3_conf_payload() {
  cat <<-END
{
  "mysql1_name": "$(typo3_mysql1_name)",
  "mysql1_user": "$(typo3_mysql1_user)",
  "mysql1_pass": "$(typo3_mysql1_pass)",
  "mysql1_host": "$(typo3_mysql1_host)"
}
END
}

typo3_mysql1_name() {
  echo $(nos_payload env_MYSQL1_NAME)
}

typo3_mysql1_user() {
  echo $(nos_payload env_MYSQL1_USER)
}

typo3_mysql1_pass() {
  echo $(nos_payload env_MYSQL1_PASS)
}

typo3_mysql1_host() {
  echo $(nos_payload env_MYSQL1_HOST)
}


