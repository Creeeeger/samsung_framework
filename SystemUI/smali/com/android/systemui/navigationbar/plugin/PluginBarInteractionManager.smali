.class public final Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mainContext:Landroid/content/Context;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

.field public final pluginListener:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

.field public pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->mainContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;-><init>(Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginListener:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

    .line 14
    .line 15
    return-void
.end method
