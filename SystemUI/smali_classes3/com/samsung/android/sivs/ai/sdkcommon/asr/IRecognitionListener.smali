.class public interface abstract Lcom/samsung/android/sivs/ai/sdkcommon/asr/IRecognitionListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sivs/ai/sdkcommon/asr/IRecognitionListener$_Parcel;,
        Lcom/samsung/android/sivs/ai/sdkcommon/asr/IRecognitionListener$Stub;,
        Lcom/samsung/android/sivs/ai/sdkcommon/asr/IRecognitionListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sivs.ai.sdkcommon.asr.IRecognitionListener"


# virtual methods
.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onPartialResults(Landroid/os/Bundle;)V
.end method

.method public abstract onResults(Landroid/os/Bundle;)V
.end method
