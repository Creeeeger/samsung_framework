.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

.field public final audioManager:Landroid/media/AudioManager;

.field public callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

.field public final context:Landroid/content/Context;

.field public final handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

.field public itemList:Lcom/android/systemui/qs/AutoSizingList;

.field public final items:Ljava/util/List;

.field public selectedMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;-><init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    .line 12
    .line 13
    new-instance p2, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    .line 19
    .line 20
    new-instance p2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->items:Ljava/util/List;

    .line 26
    .line 27
    const-string p2, "audio"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/media/AudioManager;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->audioManager:Landroid/media/AudioManager;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string p0, "MicModeDetailItems"

    .line 5
    .line 6
    const-string v0, "onAttachedToWindow"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MicModeDetailItems"

    .line 5
    .line 6
    const-string v1, "onDetachedFromWindow"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    .line 13
    .line 14
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x102000a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->itemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->adapter:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
