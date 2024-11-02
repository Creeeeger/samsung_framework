package com.samsung.android.sdk.scs.ai.language;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class AppInfo {
    public final String accessToken;
    public final String apiKey;
    public final String appId;
    public final boolean enableStreaming;
    public final RequestType requestType;
    public final String serverUrl;
    public final String signingKey;
    public final String userId;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Builder {
        public String apiKey = "";
        public String signingKey = "";
        public final String AppId = "";
        public final String accessToken = "";
        public final String userId = "";
        public final String serverUrl = "";
        public RequestType requestType = RequestType.CLOUD;
        public boolean enableStreaming = false;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public enum RequestType {
        CLOUD,
        ONDEVICE,
        /* JADX INFO: Fake field, exist only in values array */
        ONDEVICE_EXTERNAL
    }

    public /* synthetic */ AppInfo(Builder builder, int i) {
        this(builder);
    }

    private AppInfo(Builder builder) {
        this.apiKey = builder.apiKey;
        this.serverUrl = builder.serverUrl;
        this.appId = builder.AppId;
        this.signingKey = builder.signingKey;
        this.accessToken = builder.accessToken;
        this.userId = builder.userId;
        this.requestType = builder.requestType;
        this.enableStreaming = builder.enableStreaming;
    }
}
