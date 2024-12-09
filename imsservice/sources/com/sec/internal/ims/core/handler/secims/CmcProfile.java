package com.sec.internal.ims.core.handler.secims;

import java.util.List;

/* loaded from: classes.dex */
public class CmcProfile {
    private String accessToken;
    private String authServerUrl;
    private String cmcEmergencyNumbers;
    private String cmcRelayType;
    private int cmcType;
    private List<String> hotspotAddresses;
    private boolean supportDualSimCmc;

    public String getAccessToken() {
        return this.accessToken;
    }

    public int getCmcType() {
        return this.cmcType;
    }

    public String getAuthServerUrl() {
        return this.authServerUrl;
    }

    public String getCmcRelayType() {
        return this.cmcRelayType;
    }

    public String getCmcEmergencyNumbers() {
        return this.cmcEmergencyNumbers;
    }

    public boolean getSupportDualSimCmc() {
        return this.supportDualSimCmc;
    }

    public List<String> getHotspotAddresses() {
        return this.hotspotAddresses;
    }

    public CmcProfile(Builder builder) {
        this.accessToken = builder.accessToken;
        this.cmcType = builder.cmcType;
        this.authServerUrl = builder.authServerUrl;
        this.cmcRelayType = builder.cmcRelayType;
        this.cmcEmergencyNumbers = builder.cmcEmergencyNumbers;
        this.supportDualSimCmc = builder.supportDualSimCmc;
        this.hotspotAddresses = builder.hotspotAddresses;
    }

    public static class Builder {
        private String accessToken;
        private String authServerUrl;
        private String cmcEmergencyNumbers;
        private String cmcRelayType;
        private int cmcType;
        private List<String> hotspotAddresses;
        private boolean supportDualSimCmc;

        public static Builder newBuilder() {
            return new Builder();
        }

        public Builder setAccessToken(String str) {
            this.accessToken = str;
            return this;
        }

        public Builder setCmcType(int i) {
            this.cmcType = i;
            return this;
        }

        public Builder setAuthServerUrl(String str) {
            this.authServerUrl = str;
            return this;
        }

        public Builder setCmcRelayType(String str) {
            this.cmcRelayType = str;
            return this;
        }

        public Builder setCmcEmergencyNumbers(String str) {
            this.cmcEmergencyNumbers = str;
            return this;
        }

        public Builder setSupportDualSimCmc(boolean z) {
            this.supportDualSimCmc = z;
            return this;
        }

        public Builder setHotspotAddresses(List<String> list) {
            this.hotspotAddresses = list;
            return this;
        }

        public CmcProfile build() {
            return new CmcProfile(this);
        }
    }
}
