.class public interface abstract Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Stub;,
        Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback"


# virtual methods
.method public abstract getConnectedDeviceListForGroup()V
.end method

.method public abstract getFailedUnlockAttempt()I
.end method

.method public abstract getLockoutAttemptDeadline()J
.end method

.method public abstract getRemainingAttemptBeforeWipe()I
.end method

.method public abstract requestPrivacyItems()V
.end method

.method public abstract requestStatusIcons()V
.end method

.method public abstract requestUnlock(Ljava/lang/String;)V
.end method

.method public abstract showControls()V
.end method
