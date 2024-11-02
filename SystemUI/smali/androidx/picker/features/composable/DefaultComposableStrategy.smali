.class public Landroidx/picker/features/composable/DefaultComposableStrategy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/picker/features/composable/ComposableStrategy;


# instance fields
.field private final iconFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final leftFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final titleFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final widgetFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/picker/features/composable/left/LeftFrame;->values()[Landroidx/picker/features/composable/left/LeftFrame;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->leftFrameList:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {}, Landroidx/picker/features/composable/icon/IconFrame;->values()[Landroidx/picker/features/composable/icon/IconFrame;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->iconFrameList:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {}, Landroidx/picker/features/composable/title/TitleFrame;->values()[Landroidx/picker/features/composable/title/TitleFrame;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->titleFrameList:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {}, Landroidx/picker/features/composable/widget/WidgetFrame;->values()[Landroidx/picker/features/composable/widget/WidgetFrame;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->widgetFrameList:Ljava/util/List;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public getIconFrameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->iconFrameList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLeftFrameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->leftFrameList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTitleFrameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/picker/features/composable/ComposableFrame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->titleFrameList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWidgetFrameList()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/features/composable/DefaultComposableStrategy;->widgetFrameList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public selectComposableType(Landroidx/picker/model/viewdata/ViewData;)Landroidx/picker/features/composable/ComposableType;
    .locals 1

    .line 1
    instance-of p0, p1, Landroidx/picker/model/viewdata/AllAppsViewData;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->AllSwitch:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of p0, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox_Expander:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of p0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 16
    .line 17
    if-eqz p0, :cond_7

    .line 18
    .line 19
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getItemType()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p0, v0, :cond_5

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    if-eq p0, v0, :cond_3

    .line 30
    .line 31
    const/4 p1, 0x5

    .line 32
    if-eq p0, p1, :cond_2

    .line 33
    .line 34
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->TextOnly:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->Switch:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getActionIcon()Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->Radio_Action:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->Radio:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {p1}, Landroidx/picker/model/viewdata/AppInfoViewData;->getActionIcon()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_6

    .line 57
    .line 58
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox_Action:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    sget-object p0, Landroidx/picker/features/composable/ComposableTypeSet;->CheckBox:Landroidx/picker/features/composable/ComposableTypeSet;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_7
    const/4 p0, 0x0

    .line 65
    :goto_0
    return-object p0
.end method
