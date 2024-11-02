.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$1;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sWidgetClassArray:[Ljava/lang/Class;

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v3, :cond_1

    .line 14
    .line 15
    aget-object v5, v2, v4

    .line 16
    .line 17
    new-instance v6, Landroid/content/ComponentName;

    .line 18
    .line 19
    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    array-length v6, v5

    .line 27
    if-gtz v6, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    .line 31
    .line 32
    new-instance v7, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;

    .line 33
    .line 34
    invoke-direct {v7, p0, v5, v1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;-><init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;[ILandroid/appwidget/AppWidgetManager;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method
