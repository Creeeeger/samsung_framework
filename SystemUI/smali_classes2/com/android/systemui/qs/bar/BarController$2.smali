.class public final Lcom/android/systemui/qs/bar/BarController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$OnConfigurationChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$2;->this$0:Lcom/android/systemui/qs/bar/BarController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda8;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 15
    .line 16
    and-int/lit8 v0, v0, 0x30

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/qs/bar/BarController;->mUiMode:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v3, ">"

    .line 23
    .line 24
    const-string v4, "BarController"

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mUiMode:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-direct {v1, v5}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const-string v0, "<QUICK_UIMODE : "

    .line 44
    .line 45
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    const/4 v1, 0x6

    .line 51
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v0}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/bar/BarController;->mThemeSeq:I

    .line 61
    .line 62
    iget p1, p1, Landroid/content/res/Configuration;->themeSeq:I

    .line 63
    .line 64
    if-eq v0, p1, :cond_1

    .line 65
    .line 66
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mThemeSeq:I

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "<QUICK_OPENTHEME is "

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    new-instance p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 94
    .line 95
    const/4 p1, 0x7

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p0}, Lcom/android/systemui/qs/bar/BarController;->logForColors(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method
