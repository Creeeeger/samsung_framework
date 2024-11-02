.class final Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->access$100(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;

    .line 32
    .line 33
    const-string v2, "handleMessage onMultiFingerGesture , behavior = "

    .line 34
    .line 35
    const-string v3, ", reserved = "

    .line 36
    .line 37
    const-string v4, "[DS]InputServiceWrapper"

    .line 38
    .line 39
    invoke-static {v2, v0, v3, p1, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;->DeXMultiFingerGesture(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    return-void
.end method
