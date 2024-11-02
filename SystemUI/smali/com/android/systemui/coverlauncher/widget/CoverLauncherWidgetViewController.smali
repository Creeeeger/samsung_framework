.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;


# instance fields
.field public final appWidgetUpdating:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mController:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final notifyAppWidgetViewDataChanged()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sWidgetClassArray:[Ljava/lang/Class;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    new-instance v5, Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    array-length v5, v4

    .line 25
    if-gtz v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const v5, 0x7f0a0448

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v4, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 32
    .line 33
    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method
