package com.sec.internal.omanetapi.nms.data;

import com.sec.internal.omanetapi.common.data.RequestError;

/* loaded from: classes.dex */
public class Response {
    public short code;
    public RequestError failure;
    public String reason;
    public Reference success;
}
