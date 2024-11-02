.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherMediumWidgetProvider;
.super Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sWidgetOptions:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherMediumWidgetProvider;->sWidgetOptions:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getProviderType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getWidgetOptions()Ljava/util/HashMap;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherMediumWidgetProvider;->sWidgetOptions:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "CoverLauncherMediumWidgetProvider"

    .line 2
    .line 3
    const-string/jumbo v1, "onReceive"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateAppWidgetViewWithProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 1

    .line 1
    new-instance p0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherMediumWidgetProvider;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1, p2, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
