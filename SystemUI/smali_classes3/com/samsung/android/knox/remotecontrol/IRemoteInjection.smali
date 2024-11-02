.class public interface abstract Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;,
        Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.remotecontrol.IRemoteInjection"


# virtual methods
.method public abstract allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
.end method

.method public abstract injectKeyEvent(Landroid/view/KeyEvent;Z)Z
.end method

.method public abstract injectKeyEventDex(Landroid/view/KeyEvent;Z)Z
.end method

.method public abstract injectPointerEvent(Landroid/view/MotionEvent;Z)Z
.end method

.method public abstract injectPointerEventDex(Landroid/view/MotionEvent;Z)Z
.end method

.method public abstract injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
.end method

.method public abstract isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isRemoteControlDisabled(I)Z
.end method

.method public abstract updateDexScreenDimensions(III)V
.end method

.method public abstract updateRemoteScreenDimensionsAndCallerUid(III)V
.end method
