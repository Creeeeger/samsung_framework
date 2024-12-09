package com.sec.internal.ims.servicemodules.euc.data.resip;

/* loaded from: classes.dex */
public interface IEucSystemRequest extends IEuc<IEUCMessageData> {

    public enum EucSystemRequestType {
        RECONFIGURE
    }

    public interface IEUCMessageData {
        String getData();
    }

    IEUCMessageData getMessageData();

    EucSystemRequestType getType();
}
