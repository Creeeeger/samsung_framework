.class public interface abstract Lcom/sec/ims/sms/ISmsService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/sms/ISmsService$Stub;,
        Lcom/sec/ims/sms/ISmsService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.sms.ISmsService"


# virtual methods
.method public abstract deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
.end method

.method public abstract getSmsFallback(I)Z
.end method

.method public abstract registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
.end method

.method public abstract sendDeliverReport(I[B)V
.end method

.method public abstract sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract sendSMSResponse(ZI)V
.end method
