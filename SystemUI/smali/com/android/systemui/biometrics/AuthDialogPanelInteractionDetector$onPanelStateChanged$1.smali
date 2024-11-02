.class public final Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $state:I

.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->$state:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->this$0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelStateChanged$1;->$state:I

    .line 4
    .line 5
    iput p0, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->panelState:I

    .line 6
    .line 7
    const-string/jumbo v0, "onPanelStateChanged, state: "

    .line 8
    .line 9
    .line 10
    const-string v1, "AuthDialogPanelInteractionDetector"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
