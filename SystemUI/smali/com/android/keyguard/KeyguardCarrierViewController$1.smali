.class public final Lcom/android/keyguard/KeyguardCarrierViewController$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
