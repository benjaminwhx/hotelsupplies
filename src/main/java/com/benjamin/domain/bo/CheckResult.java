package com.benjamin.domain.bo;

/**
 * Created by piqiu on 16/3/23.
 * 检查是否通过，以及未通过的原因
 */
public class CheckResult {
    private boolean passCheck = false;
    private String errorResult;

    public boolean isPassCheck() {
        return passCheck;
    }

    public void setPassCheck(boolean passCheck) {
        this.passCheck = passCheck;
    }

    public String getErrorResult() {
        return errorResult;
    }

    public void setErrorResult(String errorResult) {
        this.errorResult = errorResult;
    }
}
