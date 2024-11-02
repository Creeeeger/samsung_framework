.class public final synthetic Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    sget v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    sput p0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method
