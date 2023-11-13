/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfrily <marvin@42lausanne.ch>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/09 17:20:37 by tfrily            #+#    #+#             */
/*   Updated: 2023/10/10 16:59:16 by tfrily           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include"libft.h"

int	ft_isalnum(int c)
{
	if (ft_isalpha (c) || ft_isdigit(c))
		return (1);
	else
		return (0);
}
