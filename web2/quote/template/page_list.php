<?php if ($end_page > 1) { ?>
    <dl class="page">
        <dt class="ltbn arrow <?php echo $p == 1 ? "nopage" : ""; ?>">
            <a <?php echo $p == 1 ? '' : "href='" . $page_set . ($p - 1) . "'"; ?>>
                <span></span>
            </a>
        </dt>
        <?php for ($i = $start_page; $i <= $end_page; $i++) { ?>
            <dd <?php echo $p == $i ? 'class="active"' : ''; ?>><a <?php echo $i == $p ? '' : "href='" . $page_set . $i . "'"; ?>><?php echo $i; ?></a></dd>
        <?php } ?>
        <dt class="rtbn arrow <?php echo $p == $maxPage ? "nopage" : ""; ?>">
            <a <?php echo $p == $maxPage ? '' : "href='" . $page_set . ($p + 1) . "'"; ?>>
                <span></span>
            </a>
        </dt>
    </dl>
<?php } ?>