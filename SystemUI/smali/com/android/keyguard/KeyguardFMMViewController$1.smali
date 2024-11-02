.class public final Lcom/android/keyguard/KeyguardFMMViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardFMMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

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
    const-string v0, "KeyguardFMMView"

    .line 2
    .line 3
    const-string/jumbo v1, "onRemoteLockInfoChanged"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController$1;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->setFMMInfo()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
