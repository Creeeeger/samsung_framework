.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->getItemViewType(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget v1, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    .line 34
    .line 35
    :cond_1
    return v1
.end method
