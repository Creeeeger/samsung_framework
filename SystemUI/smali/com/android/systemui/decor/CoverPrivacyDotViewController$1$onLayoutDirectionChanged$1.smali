.class public final Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isRtl:Z

.field public final synthetic this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

.field public final synthetic this$1:Lcom/android/systemui/decor/CoverPrivacyDotViewController$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;Lcom/android/systemui/decor/CoverPrivacyDotViewController$1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;->this$1:Lcom/android/systemui/decor/CoverPrivacyDotViewController$1;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;->$isRtl:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/View;

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;->this$1:Lcom/android/systemui/decor/CoverPrivacyDotViewController$1;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;->this$0:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 31
    .line 32
    iget-boolean v6, p0, Lcom/android/systemui/decor/CoverPrivacyDotViewController$1$onLayoutDirectionChanged$1;->$isRtl:Z

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object p0, v1, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/systemui/decor/CoverViewState;->rotation:I

    .line 38
    .line 39
    invoke-virtual {v1, p0, v6}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    iget-object v2, v1, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    const/16 v11, 0xb7

    .line 52
    .line 53
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/decor/CoverViewState;->copy$default(Lcom/android/systemui/decor/CoverViewState;ZZZZIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/decor/CoverViewState;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->setNextViewState(Lcom/android/systemui/decor/CoverViewState;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0

    .line 66
    throw p0
.end method
