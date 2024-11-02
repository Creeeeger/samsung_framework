.class public interface abstract Lcom/samsung/android/knox/ex/peripheral/IDataListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/IDataListener$Stub;,
        Lcom/samsung/android/knox/ex/peripheral/IDataListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.IDataListener"


# virtual methods
.method public abstract getHashCode()J
.end method

.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public abstract onReceive(ILandroid/os/Bundle;)V
.end method

.method public abstract onSuccess()V
.end method
