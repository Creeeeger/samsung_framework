package com.sec.internal.ims.core;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/* loaded from: classes.dex */
public class RcsRegistration {
    private Map<String, String> mStringParams;

    public String getString(String str) {
        return (String) Optional.ofNullable(this.mStringParams.get(str)).orElse("");
    }

    public RcsRegistration(Builder builder) {
        HashMap<String, String> hashMap = new HashMap<String, String>() { // from class: com.sec.internal.ims.core.RcsRegistration.1
            {
                put("UserPwd", "");
            }
        };
        this.mStringParams = hashMap;
        hashMap.put("UserPwd", builder.mPassword);
    }

    public static Builder getBuilder() {
        return new Builder();
    }

    public static class Builder {
        private String mPassword;

        public Builder setPassword(String str) {
            this.mPassword = str;
            return this;
        }

        public RcsRegistration build() {
            return new RcsRegistration(this);
        }
    }
}
