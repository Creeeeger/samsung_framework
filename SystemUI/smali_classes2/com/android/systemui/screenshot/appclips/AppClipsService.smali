.class public Lcom/android/systemui/screenshot/appclips/AppClipsService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAreTaskAndTimeIndependentPrerequisitesMet:Z

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mOptionalBubbles:Ljava/util/Optional;

.field mProxyConnectorToMainProfile:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Lcom/android/internal/statusbar/IAppClipsService;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Ljava/util/Optional;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Landroid/os/UserManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mOptionalBubbles:Ljava/util/Optional;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mUserManager:Landroid/os/UserManager;

    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p4, :cond_1

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mAreTaskAndTimeIndependentPrerequisitesMet:Z

    .line 18
    .line 19
    invoke-virtual {p5}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p3, Lcom/android/internal/infra/ServiceConnector$Impl;

    .line 27
    .line 28
    new-instance v2, Landroid/content/Intent;

    .line 29
    .line 30
    const-class p4, Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 31
    .line 32
    invoke-direct {v2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    const v3, 0x40000021    # 2.0000079f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    new-instance v5, Lcom/android/systemui/screenshot/appclips/AppClipsService$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {v5}, Lcom/android/systemui/screenshot/appclips/AppClipsService$$ExternalSyntheticLambda0;-><init>()V

    .line 45
    .line 46
    .line 47
    move-object v0, p3

    .line 48
    move-object v1, p1

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mProxyConnectorToMainProfile:Lcom/android/internal/infra/ServiceConnector;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    sget-object p4, Lcom/android/systemui/flags/Flags;->SCREENSHOT_APP_CLIPS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 56
    .line 57
    check-cast p2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 58
    .line 59
    invoke-virtual {p2, p4}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p3}, Ljava/util/Optional;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const p2, 0x7f13037d

    .line 74
    .line 75
    .line 76
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    :catch_0
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mAreTaskAndTimeIndependentPrerequisitesMet:Z

    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mProxyConnectorToMainProfile:Lcom/android/internal/infra/ServiceConnector;

    .line 111
    .line 112
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsService;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
