.class public final Lcom/android/systemui/statusbar/KshPresenter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsNightModeOn:Z

.field public mKshData:Lcom/android/systemui/statusbar/model/KshData;

.field public mKshView:Lcom/android/systemui/statusbar/KshView;

.field public final mLastConfig:Landroid/content/res/Configuration;

.field public final mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/KshPresenter$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshPresenter$1;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/KshPresenter$1;

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/KshPresenter$2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshPresenter$2;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Lcom/android/systemui/statusbar/KshPresenter$2;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v0, Landroid/content/res/Configuration;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 47
    .line 48
    .line 49
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 50
    .line 51
    and-int/lit8 v0, v0, 0x20

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    .line 59
    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/KshView;

    .line 61
    .line 62
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 63
    .line 64
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    const v2, 0x103012e

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v2, 0x1030132

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/KshView;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KshPresenter;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 82
    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/model/KshData;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/KshData;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 89
    .line 90
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public getKshData()Lcom/android/systemui/statusbar/model/KshData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKshView()Lcom/android/systemui/statusbar/KshView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    .line 2
    .line 3
    return-object p0
.end method
