.class public final Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter$spanSizeLookup$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/controls/ui/util/SpanManager;->spanInfos:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomControlAdapter;->getItemViewType(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/controls/ui/util/SpanInfo;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget p0, p0, Lcom/android/systemui/controls/ui/util/SpanInfo;->span:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method
