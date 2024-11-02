.class public final Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mParent:Lcom/android/keyguard/KeyguardSecSecurityContainer;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 15
    .line 16
    return-void
.end method
