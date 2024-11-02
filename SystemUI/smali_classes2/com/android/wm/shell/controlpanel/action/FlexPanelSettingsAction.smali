.class public final Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string p2, "com.samsung.settings.FLEX_PANEL_SETTINGS"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p2, 0x10008000

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/FlexPanelSettingsAction;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
