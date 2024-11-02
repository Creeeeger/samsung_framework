.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;

    .line 9
    .line 10
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, p1

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerTouchCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 30
    .line 31
    sget-object p2, Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return p1
.end method
