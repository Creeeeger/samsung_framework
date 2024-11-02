.class public abstract Lcom/android/systemui/power/dialog/PowerUiDialog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDoNotShowTag:Ljava/lang/String;

.field public final mIsFactoryBinary:Z

.field public mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mIsFactoryBinary:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string/jumbo p1, "ro.factory.factory_binary"

    .line 10
    .line 11
    .line 12
    const-string v0, "Unknown"

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "factory"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mIsFactoryBinary:Z

    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract checkCondition()Z
.end method

.method public abstract getDialog()Landroidx/appcompat/app/AlertDialog;
.end method

.method public abstract setInformation(Lcom/android/systemui/power/SecBatteryStatsSnapshot;)V
.end method
