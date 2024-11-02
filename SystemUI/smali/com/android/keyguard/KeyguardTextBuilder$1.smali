.class public final Lcom/android/keyguard/KeyguardTextBuilder$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final synthetic val$passwordEntry:Landroid/widget/EditText;

.field public final synthetic val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardTextBuilder;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$passwordEntry:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/keyguard/StrongAuthPopup;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 16
    .line 17
    new-instance v0, Lcom/android/keyguard/StrongAuthPopup;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->val$passwordEntry:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/StrongAuthPopup;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/keyguard/StrongAuthPopup;->updatePopup()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder$1;->this$0:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v0, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v1, 0x64

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    const-string p0, "102"

    .line 57
    .line 58
    const-string p1, "1073"

    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
