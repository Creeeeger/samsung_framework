.class public final Lcom/android/keyguard/KeyguardArrowViewController$Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mView:Lcom/android/keyguard/KeyguardArrowView;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mView:Lcom/android/keyguard/KeyguardArrowView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    return-void
.end method
