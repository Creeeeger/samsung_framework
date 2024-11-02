.class public final synthetic Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->-$$Nest$mupdateFullscreenHandlerState(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->-$$Nest$mupdateColorThemeState(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->dismissPopup()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
