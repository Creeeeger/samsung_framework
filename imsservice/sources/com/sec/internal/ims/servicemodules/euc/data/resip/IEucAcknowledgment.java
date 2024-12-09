package com.sec.internal.ims.servicemodules.euc.data.resip;

/* loaded from: classes.dex */
public interface IEucAcknowledgment extends IEuc<IEUCMessageData> {

    public interface IEUCMessageData {
        String getSubject();

        String getText();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.ims.servicemodules.euc.data.resip.IEuc
    IEUCMessageData getDefaultData();
}
