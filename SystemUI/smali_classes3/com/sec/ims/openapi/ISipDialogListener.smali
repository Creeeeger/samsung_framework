.class public interface abstract Lcom/sec/ims/openapi/ISipDialogListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/openapi/ISipDialogListener$Stub;,
        Lcom/sec/ims/openapi/ISipDialogListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.openapi.ISipDialogListener"


# virtual methods
.method public abstract onSipParamsReceived(ILjava/lang/String;Z)V
.end method

.method public abstract onSipReceived(Ljava/lang/String;)V
.end method
