.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;Landroid/telephony/PinResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->onSimCheckResponse(Landroid/telephony/PinResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
