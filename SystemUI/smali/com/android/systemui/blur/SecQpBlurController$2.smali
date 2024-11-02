.class public final Lcom/android/systemui/blur/SecQpBlurController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/blur/SecQpBlurController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/blur/SecQpBlurController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final hasCustomColorForPanelBG()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->backgroundColorId:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "ff5d5d5d"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    xor-int/2addr v0, v2

    .line 23
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const v4, 0x7f05007b

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    xor-int/2addr v3, v2

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 55
    .line 56
    and-int/lit8 p0, p0, 0x20

    .line 57
    .line 58
    if-eqz p0, :cond_0

    .line 59
    .line 60
    move p0, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move p0, v4

    .line 63
    :goto_0
    if-eqz p0, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move p0, v4

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    move p0, v2

    .line 69
    :goto_2
    if-eqz v0, :cond_3

    .line 70
    .line 71
    if-nez p0, :cond_3

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v2, v4

    .line 75
    :goto_3
    return v2
.end method
