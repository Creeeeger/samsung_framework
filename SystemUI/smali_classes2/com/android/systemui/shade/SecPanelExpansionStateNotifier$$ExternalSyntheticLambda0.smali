.class public final synthetic Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 10
    .line 11
    iget v1, v0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelPrvOpenState:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget v0, v0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    :cond_0
    move v0, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mTicketGroup:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v4, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5;

    .line 33
    .line 34
    invoke-direct {v4, p1, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda5;-><init>(IZ)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v4}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    if-eqz p1, :cond_5

    .line 50
    .line 51
    if-eq p1, v3, :cond_4

    .line 52
    .line 53
    if-eq p1, v2, :cond_3

    .line 54
    .line 55
    const-string v0, "SecPanelExpansionStateNotifier"

    .line 56
    .line 57
    const-string v2, "Invalid panel open state"

    .line 58
    .line 59
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 65
    .line 66
    const-string v2, "com.samsung.systemui.statusbar.EXPANDED"

    .line 67
    .line 68
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 73
    .line 74
    const-string v2, "com.samsung.systemui.statusbar.ANIMATING"

    .line 75
    .line 76
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 81
    .line 82
    const-string v2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 83
    .line 84
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    if-nez v0, :cond_6

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    new-instance v2, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda4;

    .line 91
    .line 92
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    if-ne p1, v3, :cond_7

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    new-instance v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2;

    .line 102
    .line 103
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    return-void
.end method
