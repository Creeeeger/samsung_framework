.class public interface abstract Lcom/samsung/android/knox/zt/devicetrust/monitor/IMonitoringListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract checkUrlReputation(Ljava/lang/String;)I
.end method

.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract onEventGeneralized(ILjava/lang/String;)V
.end method

.method public abstract onEventSimplified(ILjava/lang/String;)V
.end method

.method public abstract onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
.end method
