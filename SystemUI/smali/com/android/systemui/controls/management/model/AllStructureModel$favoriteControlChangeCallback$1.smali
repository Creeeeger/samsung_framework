.class public final Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/model/AllStructureModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->favorite:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->structureName:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->controlId:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v3, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {v3, v1}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 46
    .line 47
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/List;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    .line 72
    .line 73
    invoke-interface {p0, p1}, Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;->onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
