.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mWrapper:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LauncherAppsCompat;->mWrapper:Landroid/content/pm/LauncherApps;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LauncherAppsCompat;->mWrapper:Landroid/content/pm/LauncherApps;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;-><init>(Landroid/content/pm/LauncherApps$AppUsageLimit;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
