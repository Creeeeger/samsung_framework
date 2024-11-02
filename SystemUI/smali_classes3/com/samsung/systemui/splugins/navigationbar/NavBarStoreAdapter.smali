.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract addPack()V
.end method

.method public abstract apply(Ljava/lang/String;I)V
.end method

.method public abstract apply(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract getNavBarState(Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract getValue(Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract initPack()V
.end method

.method public abstract removeBand(Ljava/lang/String;)V
.end method

.method public abstract removePack()V
.end method
