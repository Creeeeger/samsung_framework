.class public final Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    :goto_0
    move-object p1, v0

    .line 31
    :cond_1
    if-nez p1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->clearTileSearchResults()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    .line 38
    .line 39
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->updateTileSearchResults(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->getSimpleSearchResult(ILjava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final onPreExecute()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    .line 2
    .line 3
    const-class v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    .line 12
    .line 13
    return-void
.end method
