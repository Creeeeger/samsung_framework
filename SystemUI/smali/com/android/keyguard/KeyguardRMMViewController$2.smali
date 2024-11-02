.class public final Lcom/android/keyguard/KeyguardRMMViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardRMMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardRMMViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRemoteLockInfoChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Lcom/android/keyguard/KeyguardRMMViewController$4;

    .line 4
    .line 5
    new-instance v1, Lcom/android/keyguard/KeyguardRMMViewController$2$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardRMMViewController$2;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
