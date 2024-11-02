.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private final mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$AppUsageLimit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;->mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getTotalUsageLimit()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;->mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getTotalUsageLimit()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getUsageRemaining()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;->mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getUsageRemaining()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
