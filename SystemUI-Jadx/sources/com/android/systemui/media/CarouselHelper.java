package com.android.systemui.media;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.viewpager.widget.ViewPager;
import com.android.systemui.R;
import com.android.systemui.log.MediaLogger;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.qs.SecPageIndicator;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntSupplier;
import java.util.function.Supplier;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CarouselHelper {
    public final Supplier contextSupplier;
    public final BiFunction getNumberOfPlayersFunction;
    public final SecPageIndicator indicator;
    public final IntSupplier isRTLSupplier;
    public final MediaLogger logger;
    public final MediaDataManager mediaDataManager;
    public final Function mediaPlayerDataFunction;
    public final Runnable onBarHeightChangedRunnable;
    public final Consumer onMediaVisibilityChangedConsumer;
    public float pageIndicatorPosition;
    public final MediaPlayerBarExpandHelper playerBarExpandHelper;
    public final Supplier playerSupplier;
    public final BiConsumer removePlayerConsumer;
    public final BiConsumer setCurrentPageConsumer;
    public boolean shouldSwipeBack;
    public final MediaType type;
    public final BooleanSupplier updatePlayersSupplier;
    public final ViewPager viewPager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public CarouselHelper(View view, int i, Supplier<Context> supplier, BiFunction<Boolean, MediaType, Integer> biFunction, IntSupplier intSupplier, MediaLogger mediaLogger, MediaDataManager mediaDataManager, Function<MediaType, SecMediaPlayerData> function, Runnable runnable, Consumer<Boolean> consumer, MediaPlayerBarExpandHelper mediaPlayerBarExpandHelper, Supplier<SecMediaControlPanel> supplier2, BiConsumer<String, MediaType> biConsumer, BiConsumer<Integer, MediaType> biConsumer2, MediaType mediaType, BooleanSupplier booleanSupplier, ViewPager viewPager) {
        this.contextSupplier = supplier;
        this.getNumberOfPlayersFunction = biFunction;
        this.isRTLSupplier = intSupplier;
        this.logger = mediaLogger;
        this.mediaDataManager = mediaDataManager;
        this.mediaPlayerDataFunction = function;
        this.onBarHeightChangedRunnable = runnable;
        this.onMediaVisibilityChangedConsumer = consumer;
        this.playerBarExpandHelper = mediaPlayerBarExpandHelper;
        this.playerSupplier = supplier2;
        this.removePlayerConsumer = biConsumer;
        this.setCurrentPageConsumer = biConsumer2;
        this.type = mediaType;
        this.updatePlayersSupplier = booleanSupplier;
        this.viewPager = viewPager;
        viewPager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.android.systemui.media.CarouselHelper$createOnPageChangeListener$1
            /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
            
                if (r3 != false) goto L39;
             */
            /* JADX WARN: Code restructure failed: missing block: B:65:0x0033, code lost:
            
                if (r7 < 0.99f) goto L15;
             */
            /* JADX WARN: Removed duplicated region for block: B:57:0x0108  */
            /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onPageScrolled(float r7, int r8, int r9) {
                /*
                    Method dump skipped, instructions count: 276
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.CarouselHelper$createOnPageChangeListener$1.onPageScrolled(float, int, int):void");
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i2) {
                ListPopupWindow$$ExternalSyntheticOutline0.m("onPageSelected position=", i2, "CarouselHelper");
                CarouselHelper carouselHelper = CarouselHelper.this;
                if ((i2 == 0 || i2 == ((Number) carouselHelper.getNumberOfPlayersFunction.apply(Boolean.FALSE, carouselHelper.type)).intValue() - 1) && carouselHelper.shouldSwipeBack) {
                    swipeBack(i2, carouselHelper.type);
                }
                SecMediaPlayerData secMediaPlayerData = (SecMediaPlayerData) carouselHelper.mediaPlayerDataFunction.apply(carouselHelper.type);
                if (secMediaPlayerData != null) {
                    secMediaPlayerData.currentPosition = i2;
                }
                carouselHelper.shouldSwipeBack = false;
            }

            public final void swipeBack(int i2, MediaType mediaType2) {
                Integer num = 1;
                boolean z = false;
                CarouselHelper carouselHelper = CarouselHelper.this;
                if (i2 == 0) {
                    if (carouselHelper.isRTLSupplier.getAsInt() == 1) {
                        z = true;
                    }
                    if (z) {
                        num = (Integer) carouselHelper.getNumberOfPlayersFunction.apply(Boolean.TRUE, mediaType2);
                    }
                } else {
                    if (carouselHelper.isRTLSupplier.getAsInt() == 1) {
                        z = true;
                    }
                    if (!z) {
                        num = (Integer) carouselHelper.getNumberOfPlayersFunction.apply(Boolean.TRUE, mediaType2);
                    }
                }
                int intValue = num.intValue();
                carouselHelper.setCurrentPageConsumer.accept(Integer.valueOf(intValue), mediaType2);
                float f = intValue;
                carouselHelper.pageIndicatorPosition = f;
                carouselHelper.indicator.setLocation(f - 1);
                carouselHelper.shouldSwipeBack = true;
            }
        });
        viewPager.setPageMargin(i);
        SecPageIndicator secPageIndicator = (SecPageIndicator) view.findViewById(R.id.sec_media_page_indicator);
        secPageIndicator.setLocation(this.pageIndicatorPosition);
        secPageIndicator.setSecIndicatorColorResId();
        this.indicator = secPageIndicator;
        updatePageIndicatorNumberPages();
    }

    public static final SecMediaControlPanel addOrUpdateSentinels$addSentinel(CarouselHelper carouselHelper) {
        SecMediaControlPanel secMediaControlPanel = (SecMediaControlPanel) carouselHelper.playerSupplier.get();
        secMediaControlPanel.attach(new SecPlayerViewHolder((Context) carouselHelper.contextSupplier.get(), carouselHelper.viewPager, false, carouselHelper.type));
        return secMediaControlPanel;
    }

    public static final void addOrUpdateSentinels$updateSentinel(SecMediaPlayerData secMediaPlayerData, SecMediaControlPanel secMediaControlPanel, String str, boolean z) {
        secMediaPlayerData.getSortedMediaPlayers().remove(secMediaControlPanel);
        if (z) {
            secMediaPlayerData.getSortedMediaPlayers().add(0, secMediaControlPanel);
        } else {
            secMediaPlayerData.getSortedMediaPlayers().add(secMediaControlPanel);
        }
        secMediaPlayerData.getMediaPlayers().put(str, secMediaControlPanel);
        View view = secMediaControlPanel.mViewHolder.playerView;
        if (view == null) {
            view = null;
        }
        if (view != null) {
            view.setBackground(null);
        }
        secMediaControlPanel.mIsEmptyPlayer = true;
    }

    public final void removeSentinels(SecMediaPlayerData secMediaPlayerData) {
        SecMediaControlPanel secMediaControlPanel = secMediaPlayerData.firstPageView;
        MediaType mediaType = this.type;
        BiConsumer biConsumer = this.removePlayerConsumer;
        if (secMediaControlPanel != null) {
            secMediaPlayerData.getSortedMediaPlayers().remove(secMediaControlPanel);
            biConsumer.accept("first_page", mediaType);
        }
        SecMediaControlPanel secMediaControlPanel2 = secMediaPlayerData.lastPageView;
        if (secMediaControlPanel2 != null) {
            secMediaPlayerData.getSortedMediaPlayers().remove(secMediaControlPanel2);
            biConsumer.accept("last_page", mediaType);
        }
    }

    public final void updatePageIndicatorNumberPages() {
        this.indicator.setNumPages(((Number) this.getNumberOfPlayersFunction.apply(Boolean.TRUE, this.type)).intValue());
    }

    public final void updatePageIndicatorVisibility() {
        int i;
        if (((Number) this.getNumberOfPlayersFunction.apply(Boolean.TRUE, this.type)).intValue() > 1) {
            i = 0;
        } else {
            i = 8;
        }
        this.indicator.setVisibility(i);
    }
}
