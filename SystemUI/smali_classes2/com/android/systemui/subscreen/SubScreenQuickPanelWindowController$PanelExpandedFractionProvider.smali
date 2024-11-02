.class public final Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    return-void
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final removeListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 4
    .line 5
    return-void
.end method
