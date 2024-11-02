package com.android.systemui.media;

import android.graphics.drawable.Drawable;
import android.text.format.DateUtils;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import com.android.systemui.media.SecSeekBarViewModel;
import com.android.systemui.media.audiovisseekbar.AudioVisSeekBarProgressDrawable;
import com.android.systemui.media.audiovisseekbar.config.AudioVisSeekBarConfig;
import com.android.systemui.media.audiovisseekbar.utils.animator.SingleStateValueAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecSeekBarObserver implements Observer {
    public final SecPlayerViewHolder holder;

    public SecSeekBarObserver(SecPlayerViewHolder secPlayerViewHolder) {
        this.holder = secPlayerViewHolder;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i;
        boolean z;
        float f;
        SecSeekBarViewModel.Progress progress = (SecSeekBarViewModel.Progress) obj;
        boolean z2 = progress.enabled;
        TextView textView = null;
        boolean z3 = false;
        SecPlayerViewHolder secPlayerViewHolder = this.holder;
        if (!z2) {
            secPlayerViewHolder.getSeekBar().setEnabled(false);
            secPlayerViewHolder.getSeekBar().getThumb().setAlpha(0);
            secPlayerViewHolder.getSeekBar().setProgress(0);
            TextView textView2 = secPlayerViewHolder.elapsedTimeView;
            if (textView2 == null) {
                textView2 = null;
            }
            textView2.setText("");
            TextView textView3 = secPlayerViewHolder.totalTimeView;
            if (textView3 != null) {
                textView = textView3;
            }
            textView.setText("");
            return;
        }
        Drawable thumb = secPlayerViewHolder.getSeekBar().getThumb();
        boolean z4 = progress.seekAvailable;
        if (z4) {
            i = 255;
        } else {
            i = 0;
        }
        thumb.setAlpha(i);
        secPlayerViewHolder.getSeekBar().setEnabled(z4);
        SeekBar seekBar = secPlayerViewHolder.getSeekBar();
        int i2 = progress.duration;
        seekBar.setMax(i2);
        TextView textView4 = secPlayerViewHolder.totalTimeView;
        if (textView4 == null) {
            textView4 = null;
        }
        textView4.setText(DateUtils.formatElapsedTime(i2 / 1000));
        Integer num = progress.elapsedTime;
        if (num != null) {
            int intValue = num.intValue();
            secPlayerViewHolder.getSeekBar().setProgress(intValue);
            TextView textView5 = secPlayerViewHolder.elapsedTimeView;
            if (textView5 != null) {
                textView = textView5;
            }
            textView.setText(DateUtils.formatElapsedTime(intValue / 1000));
        }
        if (secPlayerViewHolder.dummyProgressDrawable != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && z4 && !(secPlayerViewHolder.getSeekBar().getProgressDrawable() instanceof AudioVisSeekBarProgressDrawable)) {
            SeekBar seekBar2 = secPlayerViewHolder.getSeekBar();
            AudioVisSeekBarProgressDrawable audioVisSeekBarProgressDrawable = new AudioVisSeekBarProgressDrawable(secPlayerViewHolder.getSeekBar());
            AudioVisSeekBarConfig audioVisSeekBarConfig = audioVisSeekBarProgressDrawable.config;
            audioVisSeekBarConfig.primaryColor = secPlayerViewHolder.progressBarPrimaryColor;
            audioVisSeekBarConfig.secondaryColor = secPlayerViewHolder.progressBarSecondaryColor;
            seekBar2.setProgressDrawable(audioVisSeekBarProgressDrawable);
        }
        if (secPlayerViewHolder.getSeekBar().getProgressDrawable() instanceof AudioVisSeekBarProgressDrawable) {
            AudioVisSeekBarProgressDrawable audioVisSeekBarProgressDrawable2 = (AudioVisSeekBarProgressDrawable) secPlayerViewHolder.getSeekBar().getProgressDrawable();
            if (progress.playing && !progress.scrubbing && z4) {
                z3 = true;
            }
            if (audioVisSeekBarProgressDrawable2.active != z3) {
                audioVisSeekBarProgressDrawable2.active = z3;
                SingleStateValueAnimator singleStateValueAnimator = (SingleStateValueAnimator) audioVisSeekBarProgressDrawable2.motionActivityAnimator$delegate.getValue();
                if (z3) {
                    f = 1.0f;
                } else {
                    f = 0.0f;
                }
                singleStateValueAnimator.animateTo(f);
            }
            if (!z4) {
                secPlayerViewHolder.getSeekBar().setProgressDrawable(secPlayerViewHolder.dummyProgressDrawable);
            }
        }
    }
}
