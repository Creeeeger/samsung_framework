.class public final Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final qsBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->qsBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 17
    .line 18
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 27
    .line 28
    return-void
.end method
