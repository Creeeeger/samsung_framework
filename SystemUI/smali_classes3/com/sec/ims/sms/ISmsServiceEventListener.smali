.class public interface abstract Lcom/sec/ims/sms/ISmsServiceEventListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;,
        Lcom/sec/ims/sms/ISmsServiceEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.sms.ISmsServiceEventListener"


# virtual methods
.method public abstract onReceiveIncomingSMS(ILjava/lang/String;[B)V
.end method

.method public abstract onReceiveSMSAck(IILjava/lang/String;[BI)V
.end method

.method public abstract onReceiveSMSDeliveryReportAck(III)V
.end method
