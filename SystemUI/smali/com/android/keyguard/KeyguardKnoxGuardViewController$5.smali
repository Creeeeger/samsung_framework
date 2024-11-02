.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    const-string/jumbo v1, "mobileData settings changed mobileDataEnabled "

    .line 24
    .line 25
    .line 26
    const-string v2, " visibility :"

    .line 27
    .line 28
    invoke-static {v1, p1, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "KeyguardKnoxGuardView"

    .line 48
    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const v1, 0x7f130883

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 83
    .line 84
    const/16 p1, 0x8

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    return-void
.end method
