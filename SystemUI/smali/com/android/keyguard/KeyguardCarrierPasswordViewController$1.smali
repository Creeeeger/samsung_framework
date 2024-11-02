.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    .line 4
    .line 5
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->updateLayout()V

    .line 10
    .line 11
    .line 12
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    .line 15
    .line 16
    :cond_0
    return-void
.end method
